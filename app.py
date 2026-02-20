from flask import *
import pymysql

app = Flask(__name__)

@app.route("/api/signup", methods={"POST"})
def signup():
    # code to execute
    username = request.form["username"]
    email = request.form["email"]
    phone = request.form["phone"]
    password = request.form["password"]

    print(username, email, phone, password)
    # create db connection
    connection = pymysql.connect(host="localhost", user="root", password="", database="alvin_sokogarden")

    # create cursor
    cursor = connection.cursor() 

    # create sql query
    sql = "insert into users (username,email,phone,password) values(%s,%s,%s,%s)"
    data = (username,email,phone,password)

    # execute the query
    cursor.execute(sql, data)
    # save the data
    connection.commit()
    # return response
    return jsonify({"message": "Sign up api"})


@app.route("/api/signin", methods=["POST"])
def signin():
    # code to execute
    email = request.form["email"]
    password = request.form["password"]

    print(email, password)

    # create db connection
    connection = pymysql.connect(host="localhost", user="root", password="", database="alvin_sokogarden")

    # create cursor
    cursor = connection.cursor(pymysql.cursors.DictCursor)
    sql = "select user_id, username, email, phone from users where email =%s and password = %s"
    data = (email,password)
    cursor.execute(sql,data)

    if cursor.rowcount == 0:
        return jsonify ({"message":"invalid credentials"})  
    

    else:
        # get user data
        user = cursor.fetchone()
        return jsonify ({"message":"login succesful" , "user": user})
    



if __name__=="__main__":
    app.run(debug=True)
