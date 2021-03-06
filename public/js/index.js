window.addEventListener("load", function () {
    function sendData(end_path) {
        let XHR = new XMLHttpRequest();

        XHR.addEventListener("error", function(event) {
            alert('Oups! Somethong went wrong.');
        });

        XHR.addEventListener("load", function(event) {
            if (XHR.status != 200) { // analyze HTTP status of the response
                alert(`Please provide a valid number`);
            } else {
                let json = JSON.parse(XHR.responseText);
                document.getElementById("result_" + end_path).innerHTML = json.value
            }
        });

        XHR.open("GET", "/api/v1/" + end_path + "/" + document.getElementById("number_" + end_path).value);
        XHR.send();
    }

    let form_fibonacci = document.getElementById("fibonacci");

    form_fibonacci.addEventListener("submit", function (event) {
        event.preventDefault();
        sendData("fibonacci");
    });

    let form_inverted_fibonacci = document.getElementById("inverted_fibonacci")

    form_inverted_fibonacci.addEventListener("submit", function (event) {
        event.preventDefault();
        sendData("inverted_fibonacci");
    });
});