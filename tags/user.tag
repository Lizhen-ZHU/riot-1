<user>
<button onclick={greet} data-name=" lizhen">click~</button>
<form onsubmit={submitted}>
<input type='text' value=''>
<input type="submit" value='submit'></form>

</form>
<hr>
<input type='text' oninput={valid} value=''>
<p>The input is {is_valid || ''}<p>
<hr>

<button onclick={clear} >clear all</button>
<br>
<br>
<hr>

<input type='text' ref='username' oninput={update}>
<p>My name is {refs.username.value || ''}</p>
<hr>
<div each={names}>
<p>{firstname} {lastname}</p>
</div>




<div each={value, key in user_object}>
<p>{key}.<strong> {value}</strong></p>
</div>
<hr>


<input type='text' ref='new_user' value=''>
<button onclick={add_user} >submit</button>
<div each={user, i in user_names}>
<p>{i+1}.<strong>{user}</strong></p>
</div>
<hr>




<script>
this.greet=function(e){
alert('hello' + e.target.dataset.name)

}
this.submitted= function(e){
  e.preventDefault();
  alert('you submitted!' + '' + e.target.elements[0].value)
}
<!--  -------  -->
  this.valid = function(e){
    this.is_valid = (e.target.value.length > 3)? 'valid':'invalid';
  }
  <!--  -------  -->
  this.clear = function(){
    this.unmount()
  }
  <!--  -------  -->
this.on('mount', this.update)
  <!--  -------  -->

this.names = [{firstname: 'lizhen', lastname:"zhu"}]


this.user_object = {
  name:'Lizhen ZHU',
  age:'22',
  birthday:'19961108',
  IQ:'178',
  school:"columbia university"
}

 <!--  -------  -->
this.user_names = ['Lizhen Zhu ','Zhenzhen Qi', 'Joey Lee']
this.add_user = function(){
  var new_user = this.refs.new_user.value;
  this.user_names.push(new_user)
}
 <!--  -------  -->


<!--  -------  -->



          <!--  -------  -->


            <!--  -------  -->
</script>
</user>