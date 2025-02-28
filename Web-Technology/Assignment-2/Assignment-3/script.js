var a, b, c, result, flag = 0, operation = null;

function calculate(value) {
    if (flag === 0) {
        a = parseFloat(document.f1.t1.value); 
        operation = value; 
        document.f1.t1.value = ""; 
        flag = 1;
    } else {
        c = parseFloat(document.f1.t1.value); 
        if (operation === 1) {
            result = a + c;
        } else if (operation === 2) {
            result = a - c;
        } else if (operation === 3) {
            result = a * c;
        } else if (operation === 4) {
            result = a / c;
        }
        document.f1.t1.value = result; 
        flag = 0; 
    }
}

function clearInput() {
    document.f1.t1.value = "";
    flag = 0; 
    a = b = c = result = null;
}
