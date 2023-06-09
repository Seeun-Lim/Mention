package com.ssafy.memberservice.service.FeignClient;

import com.ssafy.memberservice.vo.dto.response.TopTopicDto;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(name = "mention-service")
public interface MentionServiceFeignClient {
    @GetMapping("/mention-service/mention-count/{memberid}")
    Integer getMentionCount(@PathVariable Long memberid);
    //나를 가장 많이 멘션한 토픽
    @GetMapping("/topic-service/top-topic/{memberid}")
    List<TopTopicDto> getTopTopic(@PathVariable Long memberid);
}
