package com.hotmart.challenge.repository;

import com.hotmart.challenge.model.Sale;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
interface SaleRepository extends PagingAndSortingRepository<Sale, Long> {
}
