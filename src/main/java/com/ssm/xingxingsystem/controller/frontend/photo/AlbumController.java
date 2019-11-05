package com.ssm.xingxingsystem.controller.frontend.photo;

import com.ssm.xingxingsystem.bean.Album;
import com.ssm.xingxingsystem.bean.Photo;
import com.ssm.xingxingsystem.service.AlbumService;
import com.ssm.xingxingsystem.service.PhotoService;
import com.ssm.xingxingsystem.vo.AlbumVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

//相薄
@Controller
@RequestMapping("album")
public class AlbumController {
    @Autowired
    private AlbumService albumService;
    @Autowired
    private PhotoService photoService;

    @RequestMapping(path = "albumList",method = RequestMethod.GET)
    public ModelAndView albumList(){
        ModelAndView modelAndView=new ModelAndView();

//        List<AlbumVo> list=albumService.albumList();
        List<AlbumVo> list=albumService.albumList("1");
        modelAndView.addObject("albumList",list);
        modelAndView.setViewName("frontend/albumPhoto/MyAlbum");
        return modelAndView;


    }
    @RequestMapping(path = "toInsertAlbum",method = RequestMethod.GET)
    public String toInsertAlbum(){
        return "frontend/albumPhoto/insertAlbum";
    }
    @RequestMapping(path = "insertAlbum",method = RequestMethod.POST)
    public String insertAlbum(Album album){
    albumService.insertAlbum(album);
    return "redirect:/album/albumList";

    }
    @RequestMapping(path = "deleteAlbum",method = RequestMethod.GET)
    public String deleteAlbum(String id){
        albumService.deleteAlbum(id);
        return "redirect:/album/albumList";

    }

    @RequestMapping(path = "albumPhoto",method = RequestMethod.GET)
    public ModelAndView albumPhoto(Integer id){
        ModelAndView modelAndView = new ModelAndView();
        List<Photo> list = albumService.getPhotoByAlbumId(id);
        modelAndView.addObject("photoList",list);
        modelAndView.addObject("albumId",id);
        modelAndView.setViewName("frontend/albumPhoto/myPhoto");
        return modelAndView;
    }

}
