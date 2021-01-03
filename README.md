

***

This is a fork of https://github.com/ColumbusCollaboratory/electron-quick-start and
updates the code in several ways.

- Switch to Electron 11.1.1
- Switch to standard R 4-03
- As of now no MAC-OSX-R-(Portable)-Version included
- New R user defined functions (on the basis of the photon RStudio Add-in)
- New MakeShinyExe-R-Script to facilitate the process and **copies all R-Files** as well as
  an optional **www-folder** (use this to put all needed files inside) to run any possible shiny-app

***



# shiny-electron-quick-start

**Clone and run for a quick way to see Electron in action.**

This is a minimal Electron application based on the [Quick Start Guide](https://electronjs.org/docs/tutorial/quick-start) within the Electron documentation.

**Use this app along with the [Electron API Demos](https://electronjs.org/#get-started) app for API code examples to help you get started.**

A basic Electron application needs just these files:

- `package.json` - Points to the app's main file and lists its details and dependencies.
- `main.js` - Starts the app and creates a browser window to render HTML. This is the app's **main process**.
- `index.html` - A web page to render. This is the app's **renderer process**.

You can learn more about each of these components within the [Quick Start Guide](https://electronjs.org/docs/tutorial/quick-start).

## Basic Setup

To clone and run this repository you'll need [Git](https://git-scm.com) and
[Node.js](https://nodejs.org/en/download/) (which comes with [npm](http://npmjs.com))
installed on your computer. 

Note: If you're using Linux Bash for Windows, [see this
guide](https://www.howtogeek.com/261575/how-to-run-graphical-linux-desktop-applications-from-windows-10s-bash-shell/)
or use `node` from the command prompt.


**In order to get started just open *MakeShinyExe.R* and run the first three lines of code**.

## Run the App

Continue in  **MakeShinyExe.R** in order to run oder build the app.

Notice that the 

```
shell(paste0("cd ", "./shiny-electron-quick-start && npm stop"))
```

helps to **end the electron-process**.


## Resources for Learning Electron


- [electron/shiny-electron-quick-start](https://github.com/electron/shiny-electron-quick-start) - a very basic starter Electron app
- [electron/simple-samples](https://github.com/electron/simple-samples) - small applications with ideas for taking them further
- [electron/electron-api-demos](https://github.com/electron/electron-api-demos) - an Electron app that teaches you how to use Electron
- [hokein/electron-sample-apps](https://github.com/hokein/electron-sample-apps) - small demo apps for the various Electron APIs

## License

[CC0 1.0 (Public Domain)](LICENSE.md)
