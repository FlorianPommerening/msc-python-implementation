from threading import Timer
import time
import thread

def run_once():
    print "Hello"

def run_forever():
    while True:
        print "tick"
        time.sleep(1)

def run_with_timeout(timeout, default, f, *args, **kwargs):
    if not timeout:
        return f(*args, **kwargs)
    try:
        timeout_timer = Timer(timeout, thread.interrupt_main)
        timeout_timer.start()
        result = f(*args, **kwargs)
        timeout_timer.cancel()
        return result
    except KeyboardInterrupt:
        return default

run_with_timeout(5, None, run_once)
print "first done"
run_with_timeout(5, None, run_forever)
print "second done"
run_with_timeout(5, None, run_forever)
print "done"
