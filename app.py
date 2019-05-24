from flask import Flask,render_template,request,redirect,url_for
import socket
import platform

app = Flask(__name__)


#getting the details
@app.route('/machineinfo')

def machineinfo():
    #get machine details
    host_name = socket.gethostname()
    host_ip = socket.gethostbyname(host_name)
    os_name = platform.system()



    return render_template("machineinfo.html", host_name=host_name, host_ip=host_ip, os_name=os_name)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=9000)

