import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  ping() {
    setInterval(() => {
      console.log('aq')
      this.element.requestSubmit()
    }, 1000)
  }
}