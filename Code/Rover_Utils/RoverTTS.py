import pyttsx3
import sys
profanity = sys.argv[1]
engine = pyttsx3.init()
engine.say(str(profanity))
engine.runAndWait()