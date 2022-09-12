// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button", "icon", "menu", "profile"]

  connect() {
    console.log('Hello, Stimulus!')
  }

  toggle() {
    if(!this.menuTarget.classList.contains("visible")) {
      event.preventDefault()
      this.iconTarget.classList.remove("fa-bars")
      this.iconTarget.classList.add("fa-times")
      this.menuTarget.classList.add("visible")
      this.buttonTarget.setAttribute("aria-expanded", true)
    } else {
      this.iconTarget.classList.add("fa-bars")
      this.iconTarget.classList.remove("fa-times")
      this.menuTarget.classList.remove("visible")
      this.buttonTarget.setAttribute("aria-expanded", false)
    }
  }

  profileToggle() {
    if(this.profileTarget.classList.contains("hidden-toggle")){
      this.profileTarget.classList.remove("hidden-toggle")
    } else {
      this.profileTarget.classList.add("hidden-toggle")
    }
  }
}
