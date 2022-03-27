from flask import Flask  
  
app = Flask(__name__)
 
@app.route('/') #decorator drfines the   
def home():  
    return "hello, this is our first flask website";  

@app.route('/<num1>/<num2>/<op>') #decorator drfines the   
def cal(num1, num2, op):  
    try:
        if op == 'add':
            return f"Addition: {int(num1)+int(num2)}"
        if op == 'mul':
            return f"Multiplication: {int(num1)*int(num2)}"
        if op == 'div':
            return f"Division: {int(num1)/int(num2)}"    
        if op== 'sub':
            return f"Subtraction: {int(num1)-int(num2)}"
        return "Do you know maths???"
    except:
        return "Are you Soumik???"  
  
if __name__ =='__main__':  
    app.run(host="0.0.0.0", port= 5000, debug = True) 
    
    