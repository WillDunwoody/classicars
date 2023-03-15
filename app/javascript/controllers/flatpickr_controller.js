import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static values = { unavailable: Array, price: String }
  static targets = ["startdate", "enddate", "price"]

  connect() {
    this.flatpickrInit()
    this.enddateTarget.disabled = true
  }

  flatpickrInit() {
    console.log("arrived in flatpickr")
    flatpickr(this.startdateTarget, {
      minDate: "today",
      disable: this.unavailableValue,
      dateFormat: "d-m-Y",
    });
  }

  startDateInput() {
    console.log(this.startdateTarget.value.split("-").reverse().join("-"))
    console.log(this.priceValue)
    if (this.startdateTarget != "") {
      this.enddateTarget.disabled = false
    }
    flatpickr(this.enddateTarget, {
      minDate: this.startdateTarget.value.split("-").reverse().join("-"),
      disable: this.unavailableValue,
      dateFormat: "d-m-Y"
    });
  }

  calculatePrice() {
    let splitStart = this.startdateTarget.value.split("-")
    let splitEnd = this.enddateTarget.value.split("-")

    let startSplit = new Date([splitStart[1], splitStart[0], splitStart[2]].join("/"))
    let endSplit = new Date([splitEnd[1], splitEnd[0], splitEnd[2]].join("/"))

    let price = parseInt((endSplit - startSplit) / (1000 * 60 * 60 * 24), 10) * Number(this.priceValue)
    this.priceTarget.innerText = `€${price}`
  }
}
