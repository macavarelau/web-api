import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "icon"]

  toggle() {
    const type = this.inputTarget.type
    this.inputTarget.type = type === "password" ? "text" : "password"
    
    // Toggle icon classes
    if (type === "password") {
      this.iconTarget.classList.remove("fa-eye")
      this.iconTarget.classList.add("fa-eye-slash")
    } else {
      this.iconTarget.classList.remove("fa-eye-slash")
      this.iconTarget.classList.add("fa-eye")
    }
  }
} 