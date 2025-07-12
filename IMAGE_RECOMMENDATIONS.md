# High-Quality Banner Images for OneTouch Controls

## Image Requirements
- **Dimensions:** 1920x1080px or higher (16:9 aspect ratio)
- **Format:** JPG or PNG
- **Quality:** High resolution, professional looking
- **Style:** Industrial, modern, clean

## Recommended Search Terms and Sources

### Slide 1: Main Banner (Keep existing)
- Current: `assets/img/1st_banner.png`
- **Keep as is** - Your branded main banner looks good

### Slide 2: Control Panel Manufacturing
- **Save as:** `assets/img/banner/control-panel-hq.jpg`
- **Search terms:** 
  - "industrial control panel manufacturing"
  - "electrical automation panel"
  - "PLC control cabinet"
  - "industrial automation control room"
- **Recommended sources:** Unsplash, Pexels, Freepik

### Slide 3: PLC & SCADA Solutions
- **Save as:** `assets/img/banner/plc-scada-hq.jpg`
- **Search terms:**
  - "PLC programming industrial"
  - "SCADA control room"
  - "industrial automation computer"
  - "process control engineering"

### Slide 4: Motion Control & Servo
- **Save as:** `assets/img/banner/servo-motion-hq.jpg`
- **Search terms:**
  - "servo motor industrial automation"
  - "precision motion control"
  - "robotic arm manufacturing"
  - "automated assembly line"

### Slide 5: VFD Solutions
- **Save as:** `assets/img/banner/vfd-motor-hq.jpg`
- **Search terms:**
  - "variable frequency drive VFD"
  - "motor control industrial"
  - "energy efficient motors"
  - "industrial motor drives"

### Slide 6: HMI Solutions
- **Save as:** `assets/img/banner/hmi-interface-hq.jpg`
- **Search terms:**
  - "HMI human machine interface"
  - "industrial touchscreen control"
  - "automation operator interface"
  - "manufacturing control screen"

## Free Stock Photo Websites

### 1. Unsplash (unsplash.com)
- Free high-resolution photos
- Search: "industrial automation", "manufacturing", "technology"

### 2. Pexels (pexels.com)
- Free stock photos
- Good selection of industrial images

### 3. Pixabay (pixabay.com)
- Free images and photos
- Vector graphics also available

### 4. Freepik (freepik.com)
- Free with attribution
- Professional industrial illustrations

## Instructions for Implementation

1. **Download images** from the recommended sources
2. **Rename them** according to the "Save as" names above
3. **Place them** in the `assets/img/banner/` folder
4. **Update the HTML** by changing the background-image URLs

## Example Update
```html
<!-- Change this: -->
style="background-image: url(assets/img/delta-plc.jpg);"

<!-- To this: -->
style="background-image: url(assets/img/banner/plc-scada-hq.jpg);"
```

## Alternative: Use CSS for better performance
You can also add these to your CSS file for better caching:

```css
.banner-control-panel {
    background-image: url('assets/img/banner/control-panel-hq.jpg');
}
.banner-plc-scada {
    background-image: url('assets/img/banner/plc-scada-hq.jpg');
}
/* etc... */
```

## Professional Tips
- Choose images with **dark overlays** or **space for text**
- Ensure images are **horizontally oriented**
- Look for **industrial/professional** aesthetics
- Avoid **busy backgrounds** that compete with text
- Consider **brand colors** (blues, greys, industrial tones)
