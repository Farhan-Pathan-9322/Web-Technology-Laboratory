import { Component } from '@angular/core';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [],
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css'], 
})
export class RegisterComponent {
  register_message = "Register Here 👋";
  full_name = "Full Name";
  email = "Email ✉️";
  pass = "Password";

 
}
