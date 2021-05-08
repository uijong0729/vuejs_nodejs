<template>
  <form v-on:submit.prevent="submitForm">
      <div>
          <label for="username">id: </label>
          <input type="text" id="username" v-model="username">
      </div>
      <div>
          <label for="password">pw: </label>
          <input type="password" id="password" v-model="password">
      </div>
      <button type="submit">
          login
      </button>
  </form>
</template>

<script>
import axios from 'axios';
export default {
    data: function(){
        // 컴포넌트간 데이터가 서로 참조되지 않도록 함수 안의 객체를 리턴
        return {
            username: '',
            password: ''
        }
    }, methods: {
        submitForm: function(){
            // submit의 기본동작(새로고침)을 막음
            // event.preventDefault();
            let url = 'https://jsonplaceholder.typicode.com/users';
            let data = {
                username: this.username,
                password: this.password
            }
            // required : $ npm i axios
            axios.post(url, data)
                .then(function(response){
                    console.log(response);
                })
                .catch(function(error){
                    console.log(error);
                });
            console.log(this.username, this.password);
        }
    }
}
</script>

<style>

</style>