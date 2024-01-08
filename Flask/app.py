from flask import Flask, render_template, request, redirect, url_for
app = Flask(__name__)
app.config['TEMPLATES_AUTO_RELOAD'] = True

@app.route("/", methods=["GET", "POST"])
def input_page():
    if request.method == "POST":

        # do stuff here

        return render_template("index.html")
    else:
        return render_template("index.html")
        

    return render_template("index.html")


@app.errorhandler(404)
def not_found_error(error):
    return render_template('page_not_found.html'), 404

@app.errorhandler(500)
def internal_error(error):
    return render_template('error_page.html'), 500

if __name__ == "__main__":

    app.run(debug=False)
