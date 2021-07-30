package com.hotmart.challenge.repository;

import com.hotmart.challenge.model.User;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
interface UserRepository extends PagingAndSortingRepository<User, Long> {
}
