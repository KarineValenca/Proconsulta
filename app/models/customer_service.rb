class CustomerService < ActiveRecord::Base
	attr_accessible :year_customer_service, :trimester_customer_service,
	 :month_customer_service, :date_customer_service, :region_customer_service,
	 :uf_customer_service, :description_customer_service, :code_subject_customer_service,
	 :description_subject_customer_service, :code_problem_customer_service,
	 :description_problem_customer_service, :genre_customer_service, :cep_customer_service
end