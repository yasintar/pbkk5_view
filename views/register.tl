<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Register</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<!--     <link rel="stylesheet" href="/css/coba.css"> 
 -->
<style type="text/css">
  /* helpers/align.css */

.align {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}

/* helpers/grid.css */

.grid {
  margin-left: auto;
  margin-right: auto;
  max-width: 24em;
  width: 90%;
}

/* helpers/icon.css */

.icon {
  display: inline-block;
  height: 1.25em;
  line-height: 1.25em;
  margin-right: 0.625em;
  text-align: center;
  vertical-align: middle;
  width: 1.25em;
}

.icon--info {
  background-color: #e5e5e5;
  border-radius: 50%;
}

/* layout/base.css */

*,
*::before,
*::after {
  -webkit-box-sizing: inherit;
          box-sizing: inherit;
}

html {
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
  height: 100%;
}

body {
/*  background-color: #A0A0A0;*/
  font-family: 'Helvetica', 'Arial', sans-serif;
  font-size: 14px;
  font-size: 0.875rem;
  font-weight: 400;
  line-height: 1.5;
  margin: 0;
  min-height: 100%;
}

/* modules/anchor.css */

a {
  color: inherit;
  text-decoration: none;
  -webkit-transition: color 0.3s;
  transition: color 0.3s;
}

a:hover {
  color: #1dabb8;
}

/* modules/form.css */

fieldset {
  border: none;
  margin: 0;
}

input {
  -webkit-appearance: none;
     -moz-appearance: none;
          appearance: none;
  border: none;
  font: inherit;
  margin: 10px;
  outline: none;
  padding: 0;
}

input[type='submit'] {
  cursor: pointer;
}

.form input[type='text'],
.form input[type='password'] {
  width: 100%;
}

/* modules/login.css */

.login__header {
  background-color: #282830;
  border-top-left-radius: 0.25em;
  border-top-right-radius: 0.25em;
  color: #fff;
  padding: 1.5em;
  text-align: center;
  text-transform: uppercase;
}

.login__title {
  font-size: 16px;
  font-size: 1rem;
  margin: 0;
}

.login__body {
  background-color: #f0f0f0;
  padding: 1.5em;
  position: relative;
}

.login__body::before {
  background-color: #fff;
  content: '';
  height: 0.5em;
  left: 50%;
  margin-left: -0.25em;
  margin-top: -0.25em;
  position: absolute;
  top: 0;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  width: 0.5em;
}

.login input[type='text'],
.login input[type='password'] {
  border: 0.0625em solid #e5e5e5;
  padding: 1em 1.25em;
}

.login input[type='text'] {
  border-top-left-radius: 0.25em;
  border-top-right-radius: 0.25em;
}

.login input[type='password'] {
  border-bottom-left-radius: 0.25em;
  border-bottom-right-radius: 0.25em;
  border-top: 0;
}

.login input[type='submit'] {
  background-color: #1dabb8;
  border-radius: 0.25em;
  color: #fff;
  font-weight: 700;
  -webkit-box-ordinal-group: 2;
      -ms-flex-order: 1;
          order: 1;
  padding: 0.75em 1.25em;
  -webkit-transition: background-color 0.3s;
  transition: background-color 0.3s;
}

.login input[type='submit']:focus,
.login input[type='submit']:hover {
  background-color: #198d98;
}

.login__footer {
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  background-color: #fff;
  border-bottom-left-radius: 0.25em;
  border-bottom-right-radius: 0.25em;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
      -ms-flex-pack: justify;
          justify-content: space-between;
  padding-bottom: 1.5em;
  padding-left: 1.5em;
  padding-right: 1.5em;
}

.login__footer p {
  margin: 0;
}

.form-control{display:block;width:100%;height:50px;padding:6px 12px;font-size:14px;margin:10px;line-height:1.428571429;color:#555;vertical-align:middle;background-color:#fff;background-image:none;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-webkit-transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s,box-shadow ease-in-out .15s}

</style>
</head>

<body class="align">
  <div class="grid">
    <form action="register/add" method="post" class="form login">
      <header class="login__header">
        <h2><span class="fa fa-sign-in" ></span> Pintu Utama (register)</h2>
      </header>
      <div class="login__body">
        <div class="form__field">
          <input type="text" name="nrp" placeholder="NRP" required>
        </div>
        <div class="form__field">
          <input type="text" name="nama" placeholder="Nama" required>     
        </div>
        <div class="form__field">
            <!-- <label class="m-2">GERBANG</label> -->
            <select id="status" class="form-control" name="role" required>
                <option value="" disabled selected>Silahkan memilih ROLE</option>
                <option value="Mahasiswa">Mahasiswa</option>
                <option value="Dosen">Dosen</option>
            </select>
        </div>        
        <div class="form__field">
          <input type="password" name="password" placeholder="Password" required>        
        </div>
      </div>
      <footer class="login__footer">
        <input type="submit" value="Login">
        <p><span class="icon icon--info">?</span><a href="#">Do you have account?</a></p>
      </footer>
    </form>
  </div>
</body>

</html>
