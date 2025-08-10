package com.rlap.et.category.service;

import com.rlap.et.common.dto.CategoryInfo;
import com.rlap.et.common.dto.SubCategoryInfo;
import com.rlap.et.common.dto.TypeCategorySubCategoryRequest;
import com.rlap.et.common.dto.TypeInfo;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;


public interface CategoryService {
    /*
    *     Category Service
    * */
    List<CategoryInfo> getAllCategories();
    CategoryInfo getCategoryInfoById(UUID id);
    void createCategory(TypeCategorySubCategoryRequest request);
    void updateCategory(UUID id, TypeCategorySubCategoryRequest request);
    void deleteCategory(UUID id);

    /***
     *
     * Sub Category Service
     */

    SubCategoryInfo getSubCategoryInfoByCategoryAndSubCategoryId(UUID categoryId, UUID subCategoryId);
    List<SubCategoryInfo> getAllSubCategories();
    SubCategoryInfo getSubCategoryInfoById(UUID id);
    void createSubCategory(TypeCategorySubCategoryRequest request);
    void updateSubCategory(UUID id, TypeCategorySubCategoryRequest request);
    void deleteSubCategory(UUID id);


    /**
     *
     * Type Services
     *
     */


    List<TypeInfo> getAllTypes();
    CategoryInfo getTypeInfoById(UUID id);
    void createType(TypeCategorySubCategoryRequest request);
    void updateType(UUID id, TypeCategorySubCategoryRequest request);
    void deleteType(UUID id);




}
