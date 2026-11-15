# LunaSight — Lunar Mission Simulator

LunaSight is a browser-based interactive concept for exploring lunar landing-site trade-offs. The web HUD in `index.html` is the final application; the jury presentation and guided simulation links are in `showcase.html`.

## Launch the web app

### From VS Code

Open this repository folder, then run the launcher for your operating system:

- **macOS:** double-click `run_mac.command`, or run `bash run_mac.command` in the integrated terminal.
- **Windows:** double-click `run_windows.bat`.
- **Linux:** run `bash run_linux.sh` in the integrated terminal.

The launcher serves the repository locally and opens `http://127.0.0.1:8000/`. Keep its terminal/server window open while using the app. No package installation is needed; the launchers use Python's built-in static web server.

Alternatively, open `index.html` with the VS Code Live Server extension. To start the server manually, run `python3 -m http.server 8000 --bind 127.0.0.1` from the repository folder and visit `http://127.0.0.1:8000/`.

An internet connection is needed for Tailwind CSS, which is loaded from its CDN. Panorama and audio assets are served from this repository.

## Install as a desktop app

The web HUD includes a standalone-app manifest and app icons. With the local server running, open `http://127.0.0.1:8000/` in Safari and choose **File → Add to Dock**, or use the browser's **Install LunaSight** action in Chrome or Edge. The installed app opens in its own window; keep the local server running while using this local installation.

## Jury presentation

Open `showcase.html` for the Cosmic Variance project overview, workflow, and three guided simulations. Each scenario opens the HUD at a different lunar site with the same UTC epoch:

- Slater Plain
- Malapert Massif
- Nobile Rim

The GitHub Pages workflow deploys both the interactive app and presentation. The app is the repository's root page; the presentation is at `/showcase.html`.

## Using the simulator

Choose a site in the mission planner, inspect the modeled Sun and Earth against the local horizon, and use the mission timeline to explore changing conditions. Rotate the Moon to select a location, or enter coordinates manually. The telemetry panel compares sunlight and direct-to-Earth visibility; the optional communications channel mixes the local radio and static audio.

The browser demo uses an analytic ephemeris and illustrative horizon profiles and panorama imagery. It is an educational simulation, not a landing-site certification tool or operational guidance. Its results are not a substitute for validated ephemerides, measured terrain, hazard analysis, or mission-specific engineering review.

## Repository contents

```text
LunaSight/
├── index.html                 # Final interactive web app
├── showcase.html              # Jury presentation and scenario links
├── run_mac.command            # macOS web launcher
├── run_windows.bat            # Windows web launcher
├── run_linux.sh               # Linux web launcher
├── panorama-*.png             # Local lunar panorama assets
├── cosmic-variance-logo.png
├── *.mp3                      # Optional local audio
```

## References

- NASA/JPL Horizons API: <https://ssd-api.jpl.nasa.gov/doc/horizons.html>
- NASA Moon Trek: <https://trek.nasa.gov/moon/>
