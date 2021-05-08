
<template>
  <!-- 최상위 요소는 1개만 허용 -->
  <div>
    <app-header 
      v-bind:propsdata="str"
      v-on:renew="renewStr">

    </app-header>
    <app-form>

    </app-form>
  </div>
</template>

<script>
import AppHeader from './components/AppHeader.vue';
import AppForm from './components/AppForm.vue';

export default {
  data: function(){
    return {
      str: 'Header'
    }
  }, 
  components: {
    'app-header': AppHeader,
    'app-form': AppForm
  },
  methods: {
    renewStr: function(){
      this.str = 'Hello'
    }
  }
}
</script>

<style>

</style>