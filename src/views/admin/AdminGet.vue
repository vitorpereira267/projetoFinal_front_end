<template>
  <div style="background: indianred;; height: 100%; padding-bottom: 50px" >
    <div class="tags">
      <a href="http://localhost:8080/adminget">Get</a>
      <a href="http://localhost:8080/adminadd">Add</a>
      <a href="http://localhost:8080/admindelete">Delete</a>
      <a href="http://localhost:8080/adminupdate">Update</a>
    </div>
    <div class="box">
      <div v-for="(data, index) in resultados" :key="index">
          <div class="card">

          
        <div class="insert-info">
          <h2>Game: {{ data.gameName }}</h2>
        </div>
        <div class="insert-info">
          <h2>Pegi: {{ data.pegi }}</h2>
        </div>
        <div class="insert-info">
          <h2>Price: {{ data.preco }}</h2>
        </div>
        <div class="insert-info">
          <h2>Stock: {{ data.stock }}</h2>
        </div>
        <div class="insert-info">
          <h2>Description: {{ data.description }}</h2>
        </div>
        <div class="insert-info">
          <h2>Minimum Required: {{ data.minimum_Requirement }}</h2>
        </div>
        <div class="insert-info">
          <h2>Recommended Requirement: {{ data.recommended_Requirement }}</h2>
        </div>
        <div class="insert-info">
          <h2>Image: {{ data.image }}</h2>
        </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import axios from "axios";
export default {
  data() {
    return {
      resultados: "",
    };
  },

  //https://finalspaceapi.com/api/v0/character
  methods: {
    carregaInfo() {
      axios.get("http://localhost:3000/api/game").then((res) => {
        this.resultados = res.data;
        console.log(this.resultados);
      });
    },
  },
  mounted() {
    this.carregaInfo();
  },
};
</script>
<style scoped>
a {
  margin: 10px;
  text-decoration: none;
  color: black;
  font-size: 30px;
}
h2 {
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
    color: #777;
    font-size: 13px;
}
.tags {
  height: 100px;
  display: flex;
  padding: 0 330px;
  justify-content: center;
  align-items: center;
}
.box {
  padding: 50px;
  display: flex;
  flex-direction: column;
  background-color: lightgray;
  margin: 30px 330px;
  border-radius: 8px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  background: linear-gradient(#e66465, #9198e5);
  color: #190202;
  flex-flow: row wrap;
}
.insert-info {
  display: flex;
  padding: 10px;
}

input[type="submit"] {
  width: 320px;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
  margin: 50px;
}
.card{
    color: #777;
  font-size: 13px;
  margin-top: 15px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  text-align: center;
  margin: 10px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
 width: 360px;
}
</style>