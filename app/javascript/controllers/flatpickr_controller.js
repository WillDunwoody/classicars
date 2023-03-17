import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

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
    let splitStartDate = this.startdateTarget.value.split("-")
    let splitEndDate = this.enddateTarget.value.split("-")

    let rearrangedStartDate = new Date([splitStartDate[1], splitStartDate[0], splitStartDate[2]].join("/"))
    let rearrangedEndDate = new Date([splitEndDate[1], splitEndDate[0], splitEndDate[2]].join("/"))

    let price = parseInt((rearrangedEndDate - rearrangedStartDate) / (1000 * 60 * 60 * 24), 10) * Number(this.priceValue)
    this.priceTarget.innerText = `€${price}`
  }
}
