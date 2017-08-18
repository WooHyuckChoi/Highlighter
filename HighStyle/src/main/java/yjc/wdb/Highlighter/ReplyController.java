package yjc.wdb.Highlighter;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import yjc.wdb.Highlighter.domain.Question_ReplyVO;
import yjc.wdb.Highlighter.service.Question_ReplyService;

@RestController
@RequestMapping("reply")
public class ReplyController {

   @Inject
   private Question_ReplyService service;
   
   // ¥Ò±€ µÓ∑œ
   @RequestMapping(value="", method=RequestMethod.POST)
   public ResponseEntity<String> re_create(@RequestBody Question_ReplyVO vo) {
      
      ResponseEntity<String> entity = null;
      try {
         service.re_create(vo);
         entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
      } catch(Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
      }
      
      return entity;
   }
   
   // ¥Ò±€ ∏ÆΩ∫∆Æ
   @RequestMapping(value="re_list/{question_id}", method=RequestMethod.GET)
   public ResponseEntity<List<Question_ReplyVO>> re_list(@PathVariable("question_id") String question_id) {
      
      ResponseEntity<List<Question_ReplyVO>> entity = null;
      
      try {
         
         entity = new ResponseEntity<>(service.re_list(question_id), HttpStatus.OK);
         
      } catch(Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
      }
      
      return entity;
   }
   
   // ¥Ò±€ ªË¡¶
   @RequestMapping(value="{reply_id}", method=RequestMethod.DELETE)
   public ResponseEntity<String> re_delete(@PathVariable("reply_id") String reply_id) {
      
      ResponseEntity<String> entity = null;
      
      try {
         
         service.re_delete(reply_id);
         entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
         
      } catch(Exception e) {
         e.printStackTrace();
         entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
      }
      
      return entity;
   }
   
}