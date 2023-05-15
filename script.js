"use strict";

const form = document.getElementById("form");
const userName = document.getElementById("userName");
const email = document.getElementById("email");
const phoneNumber = document.getElementById("phoneNo");
const password = document.getElementById("password");
const language = document.getElementById("language");
const zipCode = document.getElementById("zipCode");
const about = document.getElementById("about");
const male = document.getElementById("male");
const female = document.getElementById("female");
const other = document.getElementById("other");
const gender = document.form

form.addEventListener("submit", (e) => {
  e.preventDefault();
  validateInputs();
});

function validateInputs() {
  userNameValidation();
  emailValidation();
  passwordValidation();
  phoneNumberValidation();
  zipCodeValidation();
  aboutValidation();
  genderValidation();
  languageValidation();

  if (document.querySelectorAll(".success input").length === 8) {
    form.submit();
  }
}

userName.addEventListener("input", userNameValidation);
// Name validation
function userNameValidation() {
  const userNameValue = userName.value;
  if (userNameValue === "") {
    setErrorFor(userName, "Name is required");
    console.log("username empty");
    return false;
  } else {
    setSuccessFor(userName);
    return true;
  }
}

email.addEventListener("input", emailValidation);

// email validation
function emailValidation() {
  const emailValue = email.value.trim();
  if (emailValue === "") {
    setErrorFor(email, "Email is required");
    console.log("email empty");
  } else if (!IsEmailValid(emailValue)) {
    setErrorFor(email, "Provide a valid email address");
    console.log("email invalid");
    return false;
  } else {
    setSuccessFor(email);
    return true;
  }

  function IsEmailValid(emailValue) {
    const emailCheck = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    return emailCheck.test(String(emailValue).toLowerCase());
  }
}

phoneNumber.addEventListener("input", phoneNumberValidation);

// phoneNumber validation
function phoneNumberValidation() {
  const phoneNumberValue = phoneNumber.value.trim();
  if (phoneNumberValue === "") {
    setErrorFor(phoneNumber, "Phone Number is required");
    console.log("phoneNumber empty");
  } else if (!IsphoneNumberValid(phoneNumberValue)) {
    setErrorFor(phoneNumber, "Provide a valid Phone Number");
    console.log("phoneNumber invalid");
  } else {
    setSuccessFor(phoneNumber);
    return;
  }

  function IsphoneNumberValid(phoneNumberValue) {
    const phoneNumberCheck = /^\d{11}$/;
    return phoneNumberValue.match(phoneNumberCheck);
  }
}

password.addEventListener("input", passwordValidation);

// Password validation
function passwordValidation() {
  const passwordValue = password.value;
  if (passwordValue === "") {
    setErrorFor(password, "Password is required");
    console.log("password empty");
    return false;
  } else if (passwordValue.length < 8) {
    setErrorFor(password, "Password should contain at least 8 characters");
    console.log("password not up to 8 characters");
    return false;
  } else {
    setSuccessFor(password);
    return true;
  }
}

zipCode.addEventListener("input", zipCodeValidation);
// zipCode validation
function zipCodeValidation() {
  const zipCodeValue = zipCode.value.trim();
  if (zipCodeValue === "") {
    setErrorFor(zipCode, "Zip Code is required");
    console.log("zipCode empty");
    return false;
  } else if (!IszipCodeValid(zipCodeValue)) {
    setErrorFor(zipCode, "Provide a valid Zip Code");
    console.log("zipCode invalid");
    return false;
  } else {
    setSuccessFor(zipCode);
    return true;
  }

  function IszipCodeValid(zipCodeValue) {
    const zipCodeCheck = /^\d{6}$/;
    return zipCodeValue.match(zipCodeCheck);
  }
}

//gender validation
function genderValidation() {
  if (
    male.checked == false &&
    female.checked == false &&
    other.checked == false
  ) {
    setErrorFor(male, "Gender is Required");
    console.log("No gender checked");
    return false;
    // valid = true
  } else {
    setSuccessFor(male);
    console.log("gender checked");
    return true;
  }
}

//language validation
function languageValidation() {
  const languageValue = language.value;
  if (languageValue === "") {
    setErrorFor(language, "Please select a language");
    console.log("language not selected");
    return false;
  } else {
    setSuccessFor(language);
    console.log("selected");
    return true;
  }
}

about.addEventListener("input", aboutValidation);

// about validation
function aboutValidation() {
  const aboutValue = about.value;
  if (aboutValue === "") {
    setErrorFor(about, "Tell us about yourself");
    console.log("about empty");
    return false;
  } else {
    setSuccessFor(about);
    return true;
  }
}

function setErrorFor(input, message) {
  const inputContainer = input.parentElement;
  const errorDisplay = inputContainer.querySelector("small");
  errorDisplay.innerText = message;
  inputContainer.classList.add("error");
}

function setSuccessFor(input) {
  const inputContainer = input.parentElement;
  const errorDisplay = inputContainer.querySelector("small");
  errorDisplay.innerText = "";
  inputContainer.classList.add("success");
  inputContainer.classList.remove("error");
}
