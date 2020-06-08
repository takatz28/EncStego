# EncStego: An Encrypted Steganography App
EncStego combines the concepts of steganography and encryption in conveying 
secret communications between users. This application provides a solution to
hiding a secret image or text inside a cover bitmap image.

##### Features
* Media hiding
* Secret decoding

##### Notes  
* You must have MATLAB R2017a or later installed to be able to use the program
* The .zip file containing the app and its required functions can be unzipped in the
user’s desired folder. After running the app for the first time, the necessary folders
will be created in the said folder.
___________________________________________
### Revisions:
* Version 2.0
  * Added the DiffMatrix3 and DiffToOrig3 functions to be able to hide and decode RGB images, respectively.
  * Added the Instructions and About menu tabs under the Help section and removed the encode/decode steps in the main windows.
  * Added an _integrity check_ in the “Hide Media” function to ensure that the Huffman code stream is embedded properly.
  * Fixed bugs that existed in the previous version.
