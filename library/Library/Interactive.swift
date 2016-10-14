import Foundation

class Library {
    private var done: Bool = false
    private var currentInput: String = "x1"
    private var io = Io()
    
    var booksInLibrary = [
        1 : "IT by Stephen King",
        2 : "GOOSEBUMPS by RL Stine",
        3 : "SCARY STORIES TO TELL IN THE DARK by Alvin Schwartz",
        4 : "THE CALL OF CTHLULU by HP Lovecraft",
        5 : "NIGHT OF THE LIVING DEAD: BEHIND THE SCENES by John Russo",
        ]
    
    func go() {
        while !done {
            startingPage()
            
        }
    }
    
    func startingPage()-> String {
        
        io.writeOutput("BRANDON'S VERY SMALL HOME LIBRARY OF HORROR BOOKS")
        io.writeOutput("Please type in number below to choose section.")
        io.writeOutput("1. Book List")
        io.writeOutput("2. Check Out")
        io.writeOutput("3. Check In")
        io.writeOutput("4. Quit")
        currentInput = io.getInput()
        
        if currentInput == "1" {
            booksAvail()
            
        }else if currentInput == "2" {
            checkOut()
        
        }else if currentInput == "3"{
            checkIn()
        
        }else if currentInput == "4"{
            exitPage()

        }
        
        return currentInput
    }
    
    func booksAvail() {
        
        let booksSorted = booksInLibrary.keys.sorted()
        for key in booksSorted{
        print("Book Number: \(key) \(booksInLibrary[key] ?? "nil")")
        
        }
    }
    
    func checkOut(){
        io.writeOutput("ENTER BOOK NUMBER TO CHECKOUT")
        currentInput = io.getInput()
        if currentInput == "1"{
            booksInLibrary[1] = "IT by Stephen King"
            print("IT by Stephen King is CHECKED OUT")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            currentInput = io.getInput()
            if currentInput == "1"{
                startingPage()
            }
        }else if currentInput == "2"{
            booksInLibrary[2] = "GOOSEBUMPS by RL Stine"
            print("GOOSEBUMPS by RL Stine is CHECKED OUT")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            currentInput = io.getInput()
            if currentInput == "1"{
                startingPage()
            }
        }else if currentInput == "3"{
            booksInLibrary[3] = "SCARY STORIES TO TELL IN THE DARK by Alvin Schwartz"
            print("SCARY STORIES TO TELL IN THE DARK by Alvin Schwartz is CHECKED OUT")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            currentInput = io.getInput()
            if currentInput == "1"{
                startingPage()
            }
        }else if currentInput == "4"{
            booksInLibrary[4] = "THE CALL OF CTHLULU by HP Lovecraft"
            print("THE CALL OF CTHLULU by HP Lovecraft is CHECKED OUT")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            currentInput = io.getInput()
            if currentInput == "1"{
                startingPage()
            }
        }else if currentInput == "5"{
            booksInLibrary[5] = "NIGHT OF THE LIVING DEAD: BEHIND THE SCENES by John Russo"
            print("NIGHT OF THE LIVING DEAD: BEHIND THE SCENES by John Russo is CHECKED OUT")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            currentInput = io.getInput()
            if currentInput == "1"{
               startingPage()
            
        }else{
            print("ERROR: CHOOSE ANOTHER OPTION")
            }
        }
    }
    func checkIn(){
        
        io.writeOutput("ENTER BOOK NUMBER TO CHECK IN")
        currentInput = io.getInput()
        if currentInput == "1"{
            booksInLibrary[1] = "IT by Stephen King"
            print("IT by Stephen King HAS BEEN CHECKED IN. THANK YOU.")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            
        }else if currentInput == "2"{
            booksInLibrary[2] = "GOOSEBUMPS by RL Stine"
            print("GOOSEBUMPS by RL Stine HAS BEEN CHECKED IN. THANK YOU.")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            
        }else if currentInput == "3"{
            booksInLibrary[3] = "SCARY STORIES TO TELL IN THE DARK by Alvin Schwartz"
            print("SCARY STORIES TO TELL IN THE DARK by Alvin Schwartz HAS BEEN CHECKED IN. THANK YOU.")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            
        }else if currentInput == "4"{
            booksInLibrary[4] = "THE CALL OF CTHLULU by HP Lovecraft"
            print("THE CALL OF CTHLULU by HP Lovecraft HAS BEEN CHECKED IN. THANK YOU.")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            
        }else if currentInput == "5"{
            booksInLibrary[5] = "NIGHT OF THE LIVING DEAD: BEHIND THE SCENES by John Russo"
            print("NIGHT OF THE LIVING DEAD: BEHIND THE SCENES by John Russo HAS BEEN CHECKED IN. THANK YOU.")
            io.writeOutput("PRESS 1 TO GET TO START MENU")
            
        }else{
            print("ERROR: CHOOSE ANOTHER OPTION")
            
        }
        
    }
   
    func exitPage() {
        done = true
    }
    
    
    
}
