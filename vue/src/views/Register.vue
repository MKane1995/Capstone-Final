<template>
  <div id="register" class="text-center">
    <form @submit.prevent="register">
      <h1>Create Account</h1>
      <div role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div class="form-input-group">
        <label for="username">Email<br /></label>
        <input type="text" id="username" v-model="user.username" required autofocus />
      </div>
      <div class="form-input-group">
        <label for="password">Password<br /></label>
        <input type="password" id="password" v-model="user.password" required />
      </div>
      <div class="form-input-group">
        <label for="confirmPassword">Confirm Password<br /></label>
        <input type="password" id="confirmPassword" v-model="user.confirmPassword" required />
      </div>
      <button type="submit">Create Account</button>
      <p><router-link :to="{ name: 'login' }">Already have an account? Log in.</router-link></p>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else if ((this.user.password.search[/a-z/i] < 1) || (this.user.password.search[/A-Z/i] < 1) || (this.user.password.search[/0-9/i] < 1)) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password must contain at least one capital letter, one lowercase letter, and one number.";
      } else if (this.user.password.length < 8) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password must be at least 8 characters long, include one captital letter, one lowercase letter, and one number.";
      } else if (!(this.user.username.includes('@'))) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Must be a valid email address";
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'This email is already registered';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style scoped>
#register {
  background-color: white;
  font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
    "Lucida Sans", Arial, sans-serif;
    display: flex;
    align-content: center;
    justify-content: center;
    text-align: center;
    line-height: 4;
    border-style: solid;
}
/* please sign in */
h1 {
  text-decoration-line: overline underline;
  font-size: 3em;
}
.form-input-group {
  margin-bottom: 0rem;
  font-size: 1.5em;
  line-height: 2;
}
button {
  background-color: white;
  
}
</style>
