package com.shoppingcart.config;

import org.hibernate.boot.model.naming.Identifier;
import org.hibernate.boot.model.naming.PhysicalNamingStrategyStandardImpl;
import org.hibernate.engine.jdbc.env.spi.JdbcEnvironment;

/**
 * Custom Physical Naming Strategy that preserves exact column names
 * as specified in @Column annotations without any automatic conversion
 */
public class CustomPhysicalNamingStrategy extends PhysicalNamingStrategyStandardImpl {

    @Override
    public Identifier toPhysicalColumnName(Identifier name, JdbcEnvironment context) {
        // Return the identifier exactly as specified in @Column annotation
        // This prevents Hibernate from converting PascalCase to snake_case
        return name;
    }

    @Override
    public Identifier toPhysicalTableName(Identifier name, JdbcEnvironment context) {
        // Return table name exactly as specified
        return name;
    }
}

