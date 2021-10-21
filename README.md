# EncStego: An Encrypted Steganography App
EncStego combines the concepts of steganography and encryption in conveying 
secret communications between users. This application provides a solution to
hiding a secret image or text inside a cover bitmap image.

##### Features
* Media hiding
<p align="center">
  <img width="640" height="480" src="https://github.com/takatz28/EncStego/blob/master/docs/hide_media.JPG">
</p>
* Secret decoding
<p align="center">
  <img width="640" height="480" src="https://github.com/takatz28/EncStego/blob/master/docs/decode_media.JPG">
</p>

##### Notes  
* You must have MATLAB R2017a or later installed to be able to use the program
* The .zip file containing the app and its required functions can be unzipped in the
user’s desired folder. After running the app for the first time, the necessary folders
will be created in said folder.
___________________________________________
### Versions:
* Version 1.0
  * Can hide text and B/W images using the combination of Huffman encoding and least-
  significant bit embedding methods
* Version 2.0
  * Added the DiffMatrix3 and DiffToOrig3 functions to be able to hide and decode RGB images.
  * Added the Instructions and About menu tabs under the Help section and removed the encode/decode steps in the main windows.
  * Added an _integrity check_ in the “Hide Media” function to ensure that the Huffman code stream is embedded properly.
  * Fixed bugs that existed in the previous version.
