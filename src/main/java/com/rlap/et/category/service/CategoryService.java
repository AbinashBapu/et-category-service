package com.rlap.et.category.service;

import com.rlap.et.common.dto.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;


public interface CategoryService {
    /*
    *     Category Service
    * */
    List<CategoryInfo> getAllCategories();
    CategoryInfo getCategoryInfoById(UUID id);
    void createCategory(CategoryRequest request, UUID loggedOnUserId);
    void updateCategory(UUID id, CategoryRequest request, UUID loggedOnUserId);
    void deleteCategory(UUID id);

    /***
     *
     * Sub Category Service
     */

    SubCategoryInfo getSubCategoryInfoByCategoryAndSubCategoryId(UUID categoryId, UUID subCategoryId);
    List<SubCategoryInfo> getAllSubCategories();
    SubCategoryInfo getSubCategoryInfoById(UUID id);
    void createSubCategory(SubcategoryRequest request, UUID loggedOnUserId);
    void updateSubCategory(UUID id, LabelDesc request);
    void deleteSubCategory(UUID id);
    List<SubCategoryInfo> getSubCategoryInfoByCategoryId(UUID categoryId);

    /**
     *
     * Type Services
     *
     */


    List<TypeInfo> getAllTypes();
    CategoryInfo getTypeInfoById(UUID id);
    void createType(LabelDesc request);
    void updateType(UUID id, LabelDesc request);
    void deleteType(UUID id);




}
