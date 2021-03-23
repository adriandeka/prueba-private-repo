'use strict'

const moment = require('moment')

function main() {
  const pruebaDate = moment().format('DD MM YYYY, h:mm:ss a');
  console.log(pruebaDate)
}

main()