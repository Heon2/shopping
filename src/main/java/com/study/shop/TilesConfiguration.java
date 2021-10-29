package com.study.shop;
 
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;
 
@Configuration
public class TilesConfiguration {
  @Bean
  public TilesConfigurer tilesConfigurer() {
      final TilesConfigurer configurer = new TilesConfigurer();
      //�빐�떦 寃쎈줈�뿉 tiles.xml �뙆�씪�쓣 �꽔�쓬
      configurer.setDefinitions(new String[]{"classpath:/tiles/tiles_member.xml",
    		  								 "classpath:/tiles/tiles_contents.xml",
    		  								 "classpath:/tiles/tiles_notice.xml",
    		  								 "classpath:/tiles/tiles_cart.xml",
    		  								"classpath:/tiles/tiles_naver_chatting.xml"});
      configurer.setCheckRefresh(true);
      return configurer;
  }
 
  @Bean
  public TilesViewResolver tilesViewResolver() {
      final TilesViewResolver tilesViewResolver = new TilesViewResolver();
      tilesViewResolver.setViewClass(TilesView.class);
      return tilesViewResolver;
  }
}
