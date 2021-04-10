package com.example.lab1.service.Impl;

import com.example.lab1.dao.ProductMapper;
import com.example.lab1.dao.StockMapper;
import com.example.lab1.entity.*;
import com.example.lab1.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    private ProductMapper productMapper;
    private StockMapper stockMapper;
    @Override
    public List<Product> getAllProduct() {
        ProductExample productExample = new ProductExample();
        productExample.or();
        return productMapper.selectByExample(productExample);
    }

    @Override
    public Product getProductByProductCode(String productCode) {
        ProductExample productExample = new ProductExample();
        productExample.or().andCodeEqualTo(productCode);
        List<Product> products = productMapper.selectByExample(productExample);
        return products.size()==0?null:products.get(0);
    }

    @Override
    public List<Stock> getAllStock() {
        StockExample stockExample=new StockExample();
        stockExample.or();
        return stockMapper.selectByExample(stockExample);
    }

    @Override
    public Stock getStockByStockCode(String stockCode) {
        StockExample stockExample = new StockExample();
        stockExample.or().andCodeEqualTo(stockCode);
        List<Stock> stocks = stockMapper.selectByExample(stockExample);
        return stocks.size()==0?null:stocks.get(0);
    }

    @Override
    public int getAccountLv(String accountNum) {
        return 0;
    }

    @Override
    public int buyProduct(String customerCode, String idNumber, String accountNum, String password, int months) {
        return 0;
    }

    @Override
    public int buyStock(String customerCode, String idNumber, String accountNum, String password, int amount) {
        return 0;
    }

    @Override
    public int sellStock(String customerCode, String idNumber, String accountNum, String password, int amount) {
        return 0;
    }

    @Override
    public List<StockPriceTime> queryStockPrice(String stockCode) {
        return null;
    }

    @Override
    public List<CustomerProduct> queryProductByCustomerCode(String customerCode) {
        return null;
    }

    @Override
    public List<CustomerStockBuy> queryStockBuyByCustomerCode(String customerCode) {
        return null;
    }

    @Override
    public List<CustomerStockSell> queryStockSellByCustomerCode(String customerCode) {
        return null;
    }

    @Override
    public double queryStockProfitAndLoss(String customerCode) {
        return 0;
    }
}
