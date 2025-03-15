import { Component } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
 
})
export class LoginComponent {
  login = ()=>{
    alert("Login Sucessful");
    var name = document.getElementsByName("t1") ;
    
  
  }

}
