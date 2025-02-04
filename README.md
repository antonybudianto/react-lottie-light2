# react-lottie-light2

[![npm version](https://badge.fury.io/js/react-lottie-light.svg)](http://badge.fury.io/js/react-lottie-light)

**NOTE:** this is a fork of `react-lottie` to use `lottie_light.js` instead of `lottie`

Difference:

- Use lottie-light by default
- Use peerDep for lottie-web

## Demo

https://chenqingspring.github.io/react-lottie

## Wrapper of bodymovin.js

[bodymovin](https://github.com/bodymovin/bodymovin) is [Adobe After Effects](http://www.adobe.com/products/aftereffects.html) plugin for exporting animations as JSON, also it provide bodymovin.js for render them as svg/canvas/html.

## Why Lottie?

#### Flexible After Effects features

We currently support solids, shape layers, masks, alpha mattes, trim paths, and dash patterns. And we’ll be adding new features on a regular basis.

#### Manipulate your animation any way you like

You can go forward, backward, and most importantly you can program your animation to respond to any interaction.

#### Small file sizes

Bundle vector animations within your app without having to worry about multiple dimensions or large file sizes. Alternatively, you can decouple animation files from your app’s code entirely by loading them from a JSON API.

[Learn more](http://airbnb.design/introducing-lottie/) › http://airbnb.design/lottie/

Looking for lottie files › https://www.lottiefiles.com/

## Installation

Install through npm:

```
npm install --save react-lottie
```

## Usage

Import pinjump.json.json as animation data

```jsx
import React from "react";
import Lottie from "react-lottie";
import * as animationData from "./pinjump.json";

export default class LottieControl extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isStopped: false, isPaused: false };
  }

  render() {
    const buttonStyle = {
      display: "block",
      margin: "10px auto",
    };

    const defaultOptions = {
      loop: true,
      autoplay: true,
      animationData: animationData,
      rendererSettings: {
        preserveAspectRatio: "xMidYMid slice",
      },
    };

    return (
      <div>
        <Lottie
          options={defaultOptions}
          height={400}
          width={400}
          isStopped={this.state.isStopped}
          isPaused={this.state.isPaused}
        />
        <button
          style={buttonStyle}
          onClick={() => this.setState({ isStopped: true })}
        >
          stop
        </button>
        <button
          style={buttonStyle}
          onClick={() => this.setState({ isStopped: false })}
        >
          play
        </button>
        <button
          style={buttonStyle}
          onClick={() => this.setState({ isPaused: !this.state.isPaused })}
        >
          pause
        </button>
      </div>
    );
  }
}
```

### props

The `<Lottie />` Component supports the following components:

**options** _required_

the object representing the animation settings that will be instantiated by bodymovin. Currently a subset of the bodymovin options are supported:

> **loop** _options_ [default: `false`]
>
> **autoplay** _options_ [default: `false`]
>
> **animationData** _required_
>
> **rendererSettings** _required_

**width** _optional_ [default: `100%`]

pixel value for containers width.

**height** _optional_ [default: `100%`]

pixel value for containers height.

**eventListeners** _optional_ [default: `[]`]

This is an array of objects containing a `eventName` and `callback` function that will be registered as eventlisteners on the animation object. refer to [bodymovin#events](https://github.com/bodymovin/bodymovin#events) where the mention using addEventListener, for a list of available custom events.

example:

```jsx
eventListeners = [
  {
    eventName: "complete",
    callback: () => console.log("the animation completed:"),
  },
];
```

## Related Projects

- [Bodymovin](https://github.com/bodymovin/bodymovin) react-lottie is a wrapper of bodymovin
- [Angular Lottie](https://github.com/chenqingspring/ng-lottie) angular implementation
- [Vue Lottie](https://github.com/chenqingspring/vue-lottie) vue implementation
- [React Native Lottie](https://github.com/airbnb/lottie-react-native) react native implementation by airbnb
- [IOS Lottie](https://github.com/airbnb/lottie-ios) ios implementation by airbnb
- [Android Lottie](https://github.com/airbnb/lottie-android) android implementation by airbnb

## Contribution

Your contributions and suggestions are heartily welcome.

## License

MIT
