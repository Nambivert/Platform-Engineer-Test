from flask import Flask, request
import os
import json
import requests

app = Flask(__name__)

@app.route('/')
def index():
    # Print "Welcome to 2022"
    message = "Welcome to 2022\n\n"
    
    # Get user agent information
    user_agent = request.headers.get('User-Agent', 'Unknown')
    
    # Return the message along with user agent information
    return message + f'User-Agent: {user_agent}'

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))
