package com.hotmart.challenge.repository;

import com.hotmart.challenge.model.Product;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
interface ProductRepository extends PagingAndSortingRepository<Product, Long> {
}
