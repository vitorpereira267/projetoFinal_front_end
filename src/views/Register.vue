<template>
<body style="background: linear-gradient(#004351, #adadaf);">
  

  <div class="center" style="width: 500px; ">
    <h1>Register</h1>
    <form method="post" @submit.prevent="submit">
      <div class="txt_field">
        <input type="firstname" required v-model="firstname" />
        <span></span>
        <label>First Name</label>
      </div>
      <div class="txt_field">
        <input type="lastname" required v-model="lastname" />
        <span></span>
        <label>Last Name</label>
      </div>
      <div class="txt_field">
        <input type="username" required v-model="userName" />
        <span></span>
        <label>Username</label>
      </div>
      <div class="txt_field">
        <input type="email" required v-model="email" />
        <span></span>
        <label>Email</label>
      </div>
      <div class="txt_field">
        <input type="password" required v-model="password" />
        <span></span>
        <label>Password</label>
      </div>
      <div class="txt_field">
        <span></span>
        <input type="date" required v-model="birthDate" />
        
      </div>
      <input type="submit" value="Register" />
      <div class="signup_link" style="padding: 0 0 20px;">Member already? <a href="login">Login</a></div>
    </form>
  </div>
</body>
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      email: "",
      password: "",
      firstname: "",
      lastname: "",
      userName: "",
      birthDate: "",
    };
  },
  methods: {
    submit() {
      axios
        .post(
          "http://localhost:3000/api/person",
          {
            email: this.email,
            password: this.password,
            firstname: this.firstname,
            lastname: this.lastname,
            userName: this.userName,
            birthDate: this.birthDate,
            returnSecureToken: true,
          }
        )
        .then((res) => {
          console.log(res);
          alert("Registado com Sucesso");
          this.$router.push("/login");
        })
        .catch((res) => {
          alert("Registado sem Sucesso");
          console.log(res);
        });
    },
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap");
.center {
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 500px;
  background: white;
  border-radius: 10px;
  box-shadow: 10px 10px 15px rgba(0, 0, 0, 0.05);
}
.center h1 {
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}
.center form {
  padding: 0 40px;
  box-sizing: border-box;
}
form .txt_field {
  position: relative;
  border-bottom: 2px solid #adadad;
  margin: 30px 0;
}
.txt_field input {
  width: 100%;      
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}
.txt_field label {
  position: absolute;
  top: 50%;
  left: 5px;
  color: #adadad;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: 0.5s;
}
.txt_field span::before {
  content: "";
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9;
  transition: 0.5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label {
  top: -5px;
  color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before {
  width: 100%;
}
.pass {
  margin: -5px 0 20px 5px;
  color: #a6a6a6;
  cursor: pointer;
}
.pass:hover {
  text-decoration: underline;
}
input[type="submit"] {
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}
input[type="submit"]:hover {
  border-color: #2691d9;
  transition: 0.5s;
}
.signup_link {
  margin: 30px 0;
  text-align: center;
  font-size: 16px;
  color: #666666;
}
.signup_link a {
  color: #2691d9;
  text-decoration: none;
}
.signup_link a:hover {
  text-decoration: underline;
}
</style>