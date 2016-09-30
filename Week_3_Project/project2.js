function calc() {

    var bill = document.getElementById("bill").value;
    var service = document.getElementById("service").value;
    var people = document.getElementById("total").value;

    if(bill === "" || service == 0) {
        window.alert("Please enter bill amount.");
    return;
    }

    if(people === "" || people <= 1) {
        people = 1;

        document.getElementById("each").style.display = "none";
    } else {
        document.getElementById("each").style.display = "block";
    }
    
    var total = (bill * service) / people;
    total = Math.round (total * 100) / 100;
    total = total.toFixed(2);
    window.alert("Total tip per person: $ " + total);
    }

document.getElementById("totalTip").style.display = "block";

document.getElementById("tip").innerHTML = "total";

document.getElementById("totalTip").style.display = "none";

document.getElementById ("each").style.display = "none";

document.getElementById ("submit").onclick = function() 
{ calc(); };