package com.rlap.et.category.repository;

import com.rlap.et.category.entity.EtCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface EtCategoryRepository extends JpaRepository<EtCategoryEntity, UUID> {
    List<EtCategoryEntity> findAllByDeletedIsFalse();
    List<EtCategoryEntity> findAllByDeletedIsFalseAndActiveIsTrue();


    @Query("SELECT et FROM EtCategoryEntity et WHERE et.pkCategoryId = :id AND et.deleted = false AND et.active = true")
    Optional<EtCategoryEntity> findCategoryByIdAndActiveIsTrueAndDeletedFalse(@Param("id") UUID id);

}
