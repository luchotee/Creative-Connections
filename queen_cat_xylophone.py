#Creative Connections

#1
import random

#2
numbers = [i for i in range(1,21)]

#3
random.shuffle(numbers)

#4
player1_hand = numbers[:10]

#5
player2_hand = numbers[10:]

#6
def choose_connection(hand):
    
    #7
    connections = []
    
    #8
    for i in range(len(hand)):
        
        #9
        for j in range (i+1, len(hand)):
            
            #10
            options = hand[i]*hand[j], hand[i]/hand[j], hand[i]**hand[j]
            
            #11
            connection = random.choice(options)
            
            #12
            connections.append(connection)
            
    #13
    return connections

#14
player1_connections = choose_connection(player1_hand)

#15
player2_connections = choose_connection(player2_hand)

#16
def is_valid(connection, hand):
    
    #17
    for number in hand:
        
        #18
        if connection % number == 0 or connection // number == 0:
            
            #19
            return True
        
    #20
    return False

#21
def find_better_connection(hand, connections):
    
    #22
    better_connection = None
    
    #23
    for connection in connections:
        
        #24
        if is_valid(connection, hand):
            
            #25
            better_connection = connection
            
    #26
    return better_connection

#27
player1_better_connection = find_better_connection(player1_hand, player1_connections)

#28
player2_better_connection = find_better_connection(player2_hand, player2_connections)

#29
def find_winning_connection(player1_connection, player2_connection):
    
    #30
    if player1_connection > player2_connection:
        #31
        return player1_connection
    
    #32
    elif player2_connection > player1_connection:
        #33
        return player2_connection
    
    else:
        #34
        return 0

#35
winning_connection = find_winning_connection(player1_better_connection, player2_better_connection)

#36
def display_results(player1_hand, player2_hand, connections):
    
    #37
    print("Player 1 Hand: {}".format(player1_hand))
    #38
    print("Player 2 Hand: {}".format(player2_hand))
    #39
    print("\nPlayer 1 Connection: {}".format(connections[0]))
    #40
    print("Player 2 Connection: {}".format(connections[1]))
    #41
    print("\nThe Winning Connection Is: {}\n".format(winning_connection))

#42
display_results(player1_hand, player2_hand, (player1_better_connection, player2_better_connection))

#43
def game_over():
    
    #44
    player1_score = 0
    #45
    player2_score = 0
    
    #46
    if winning_connection == player1_better_connection:
        #47
        player1_score += 1
    
    #48
    elif player2_better_connection > player1_better_connection:
        #49
        player2_score += 1
    
    else:
        #50
        pass
        
    #51
    print("Player 1 Score: {}".format(player1_score))
    #52
    print("Player 2 Score: {}".format(player2_score))

#53
game_over()