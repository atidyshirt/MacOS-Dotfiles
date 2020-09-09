import os
import shutil
import time
import pidfile


def run():
    audioTypes = ["mp3", "wav"]
    videoTypes = ["mp4", "m4v", "avi", "webm", "mkv", "quicktime"]
    documentTypes = ["docx", "rtf", "md", "pdf", "txt"]
    imageTypes = ["png", "jpg", "jpeg", "gif", "raw"]
    os.chdir("/Users/jordy/Desktop")
    while True:
        files = os.listdir("./")

        for file in files:
            if os.path.isfile(file):
                ext = (file.split(".")[-1]).lower()

                if ext in imageTypes:
                    shutil.move(file, "Images/" + file)
                elif ext in videoTypes:
                    shutil.move(file, "Videos/" + file)
                elif ext in documentTypes:
                    shutil.move(file, "Docs/" + file)
                elif ext in audioTypes:
                    shutil.move(file, "Audio/" + file)
                else:
                    shutil.move(file, "Other/" + file)
        time.sleep(1)


print("Starting process")
try:
    with pidfile.PIDFile():
        print("Process started")
        run()
        time.sleep(30)
except pidfile.AlreadyRunningError:
    print("Already running.")
