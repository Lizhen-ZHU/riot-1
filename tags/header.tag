<header>
  <div>{title}</div>
<input type='text' name='name' value={get_username('male')}>
<div>{ 12*44 }</div>
<button class='button button-primary'>button</button>
  <style>
  </style>

  <script>
      console.log(this);
      this.title = "Hello World! Lizhen";
      this.get_username = function(gender){
        return (gender == 'female')?'Lizhen Zhu':'Zoe';
      };
  </script>

</header>