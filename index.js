'use strict'

const moment = require('moment')
const client = require('@xtreamr/ds_rabbitmq').client

function main() {
  const pruebaDate = moment().format('DD MM YYYY, h:mm:ss a');
  console.log(pruebaDate)
}

main()