import speech_recognition as sr
r = sr.Recognizer()

from naoqi import ALProxy
IP = str(raw_input("Please input the IP of robot."))
tts = ALProxy("ALTextToSpeech", IP, 9559)
tts.setLanguage("English")

choice = raw_input("text(1) or speech(2)")

while True:
    if choice == "1":
        text = raw_input("input text... ")
        tts.say(text)
    elif choice == "2":
        with sr.Microphone() as source:
            print("Say something!")
            audio = r.listen(source)
        try:
            text = str(r.recognize_google(audio))
            print type(text)
            print("Google Speech Recognition thinks you said " + text)
        except sr.UnknownValueError:
            print("Google Speech Recognition could not understand audio")
        except sr.RequestError as e:
            print("Could not request results from Google Speech Recognition service; {0}".format(e))
        tts.say(text)
    else:
        print("Please choice between 1 and 2")
        choice = raw_input("text(1) or speech(2)")
