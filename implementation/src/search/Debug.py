from sys import stdout

DEBUGSTREAM = open('../debug.out', 'w')# stdout
DEBUGLEVEL = 1 
# 0 everything
# 1 regular events (i.e. backtracking)
# 2 rare events (i.e. found better solution)
# 3 warnings
# 4 errors
# 5 nothing

def debug_message(msg, level=0):
    if DEBUGSTREAM and level >= DEBUGLEVEL:
        print >> DEBUGSTREAM, msg
