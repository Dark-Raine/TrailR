import React from 'react'

class MainVideo extends React.Component {
  render () {
    const video = this.props.video
    const videoSrc = `https://www.youtube.com/embed/${video.id.videoId}?autoplay=1`
    return (
      <div class='ui inverted vertical masthead center aligned segment'>
        <div class='ui container'>
          <div class='ui large secondary inverted pointing menu'>
            <a class='toc item'>
              <i class='sidebar icon' />
            </a>
            <a class='active item'>Home</a>
            <a class='item'>Friends</a>
            <a class='item'>Just Movies</a>
            <a class='item'>Just Shows</a>
            <div class='right item'>
              <a class='ui inverted button'>Log in</a>
              <a class='ui inverted button'>Sign Up</a>
            </div>
          </div>
        </div>

        <div class='ui text container'>
          <div ui embed >
            {/* <iframe title='video player' src={videoSrc} autoplay allowfullscreen/> */}
            <iframe width="560" height="315" src={videoSrc} frameBorder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowFullScreen></iframe>
          </div>
          <div className='ui segment'>
            <h4 className='ui header'>{video.snippet.title}</h4>
            <p>{video.snippet.description}</p>
          </div>
          <div class='ui huge primary button' onClick={this.props.handleMovieDetailClick}>
            Movie Details <i class='right arrow icon' />
          </div>
        </div>
       </div>
    )
  }
}

export default MainVideo
