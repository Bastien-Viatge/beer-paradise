package beer.project

import grails.converters.JSON

class BeerController {

    def index() { }
	
	def ourProducts(){
		def beers = Beer.list()
		[ourProducts:beers]
	}
	
	def display(){
		def beers = Beer.list()
		[ourProducts:beers]
	}
	
	def detail(){
		def beers = Beer.list()
		int index = (params.index).toInteger()
		def selectedBrand = beers.get(index)
		def result = [:]
		for(Product prod : selectedBrand.products){
			def prodType = prod.productType
			def price = prod.price
			result.put(prodType,price)
			
		}
		String jsonRes = (result as grails.converters.JSON).toString()
		jsonRes = jsonRes.replaceAll("'", "\\\\u0027")
		[beer:selectedBrand,jsonProds:jsonRes]
	}
}
