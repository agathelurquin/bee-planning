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
  static targets = ["button", "icon", "menu"]

  toggle() {
    this.menuTarget.classList.toggle("visible")
    this.iconTarget.classList.toggle("fa-bars")
    this.iconTarget.classList.toggle("fa-times")
    if(!this.menuTarget.classList.contains("visible")) {
      this.buttonTarget.setAttribute("aria-expanded", true)
    } else {
      this.buttonTarget.setAttribute("aria-expanded", false)
    }
  }

  // profileToggle() {
  //   if(!this.profileTarget.classList.contains("dropdown-visible")){
  //     this.profileTarget.classList.add("dropdown-visible")
  //   } else {
  //     this.profileTarget.classList.remove("dropdown-visible")
  //   }
  //  }
}
