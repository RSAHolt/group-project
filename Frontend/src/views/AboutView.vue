<template>
  <div class="about-container">
    <h1>ModernTech HR System</h1>
    
    <section class="system-overview bordered-section">
      <h2>About the System</h2>
      <p class="white-text">Developed for ModernTech Solutions' global expansion initiative, this HR management system combines intuitive front-end design with robust back-end infrastructure to handle:</p>
      <ul class="white-text">
        <li>Multi-national employee data management</li>
        <li>Secure payroll processing</li>
        <li>Automated attendance tracking</li>
        <li>Cross-departmental leave management</li>
      </ul>
    </section>

    <section class="technical-specs">
      <h2>Technical Implementation</h2>
      <div class="spec-grid">
        <div class="spec-item">
          <h3>Front-End</h3>
          <ul>
            <li>Vue.js Progressive Web App</li>
            <li>Responsive UI/UX Design</li>
            <li>Role-Based Access Control</li>
          </ul>
        </div>
        
        <div class="spec-item">
          <h3>Back-End</h3>
          <ul>
            <li>{{ backendChoice }} Architecture</li>
            <li>MySQL/PostgreSQL Database</li>
            <li>RESTful API Endpoints</li>
          </ul>
        </div>
      </div>
    </section>

    <section class="security-features bordered-section">
      <h2>Security & Compliance</h2>
      <ul class="white-text">
        <li>GDPR-compliant data handling</li>
        <li>SHA-256 Password Encryption</li>
        <li>Two-Factor Authentication</li>
        <li>Regular Security Audits</li>
      </ul>
    </section>

    <section class="project-timeline">
      <h2>Development Roadmap</h2>
      <div class="timeline">
        <div class="phase">
          <h3>Phase 1 (Completed)</h3>
          <p>Front-End Prototype with mock data and basic HR workflows</p>
        </div>
        <div class="phase current">
          <h3>Phase 2 (Current)</h3>
          <div>Production-Ready Backend with:</div>
          <ul>
            <li>SQL Database Architecture</li>
            <li>Automated Payroll Calculations</li>
            <li>Internationalization Support</li>
          </ul>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  data() {
    return {
      backendChoice: 'Node.js' // or 'PHP' based on implementation
    }
  }
}
</script>

<style scoped>
.about-container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
}

h1 {
  color: #2c3e50;
  border-bottom: 2px solid #42b983;
  padding-bottom: 0.5rem;
}

.white-text {
  color: white; /* Set text color to white */
}

.bordered-section {
  position: relative;
  padding-left: 20px; /* Adjust padding for the border */
  border-left: 3px solid #42b983; /* Add left border */
  margin: 1.5rem 0; /* Space between sections */
}

.spec-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-top: 1rem;
}

.spec-item {
  background: #f8f9fa;
  padding: 1.5rem;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.timeline {
  border-left: 3px solid #42b983;
  margin: 2rem 0;
  padding-left: 2rem;
}

.phase {
  margin: 1.5rem 0;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 6px;
  position: relative;
}

.phase::before {
  content: '';
  position: absolute;
  left: -2.4rem;
  top: 1rem;
  width: 12px;
  height: 12px;
  background: #42b983;
  border-radius: 50%;
}

ul {
  list-style-type: square;
  padding-left: 1.5rem;
}

@media (max-width: 768px) {
  .spec-grid {
    grid-template-columns: 1fr;
  }
}
</style>