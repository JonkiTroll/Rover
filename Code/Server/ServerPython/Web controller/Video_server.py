import socket
import numpy as np
import cv2 as cv
from time import sleep

addr = ("kristofer.is", 65534)
buf = 600
width = 640
height = 480
code = b'start'
num_of_chunks = width * height * 3 / buf

if __name__ == '__main__':
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.bind(addr)
    while True:
        chunks = []
        start = False
        while len(chunks) < num_of_chunks:
            chunk, _ = s.recvfrom(buf)
            if start:
                chunks.append(chunk)
            elif chunk.startswith(code):
                start = True

        byte_frame = b''.join(chunks)

        frame = np.frombuffer(
            byte_frame, dtype=np.uint8).reshape(height, width, 3)


        cv.imwrite('/var/www/html/vid/vid.jpg', frame)
        #sleep(0.1)

    s.close()
    cv.destroyAllWindows()