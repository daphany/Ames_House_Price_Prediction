const total_area = document.getElementById('total_area')
const yearbuilt = document.getElementById('yearbuilt')
const yearremodadd = document.getElementById('yearremodadd')
const form = document.getElementById('form')

form.addEventListener('submit', (e) => {
    e.preventDefault();

    checkInputs();

});

function checkInputs() {
    // get the values from the inputs
    const total_areaValue = total_area.Value.trim();
    const yearbuiltValue = yearbuilt.Value.trim();
    const yearremodaddValue = yearremodadd.Value.trim();

    if(total_areaValue.length >= 6) {
        //show error
        //add error class
        setErrorFor(total_area, 'Please enter valid total area');
    } else {
        //add success class
        setSuccessFor(total_area);
    }
}

function setErrorFor(input, message) {
    const formControl = input.parentElement; //.form-control
    const small = formControl.querySelector('small');


    // add error class
    formControl.className = 'form-control error';
    //add error message inside small
    small.innerText = message;

}

function setSuccessFor(input) {
    const formControl = input.parentElement;
    formControl.className = 'form-control success';
}
