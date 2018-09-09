package tech.acodesigner.dao;

import tech.acodesigner.dto.CategoryDto;
import tech.acodesigner.entity.Category;

import java.util.List;

public interface CategoryDao {

    public List<CategoryDto> getCategories();

    public Category getCategoryByCategoryId(int categoryId);

    public int saveCategory(String categoryName);

    public int updateCategory(Category category);

    public int deleteCategory(int categoryId);


}
